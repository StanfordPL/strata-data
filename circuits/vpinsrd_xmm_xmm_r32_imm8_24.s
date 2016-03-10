  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movd %ebx, %xmm3            #  1     0    4      OPC=movd_xmm_r32        
  movss %xmm3, %xmm2          #  2     0x4  4      OPC=movss_xmm_xmm       
  vmovss %xmm2, %xmm2, %xmm1  #  3     0x8  4      OPC=vmovss_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
