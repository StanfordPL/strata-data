  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm2, %xmm1  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vorps %xmm1, %xmm1, %xmm11  #  2     0x4  4      OPC=vorps_xmm_xmm_xmm   
  movhlps %xmm11, %xmm1       #  3     0x8  4      OPC=movhlps_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
