  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm1, %xmm2  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vmovdqu %ymm2, %ymm10       #  2     0x4  4      OPC=vmovdqu_ymm_ymm     
  minps %xmm10, %xmm1         #  3     0x8  4      OPC=minps_xmm_xmm       
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
