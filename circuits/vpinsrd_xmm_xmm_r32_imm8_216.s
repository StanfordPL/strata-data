  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovd %ebx, %xmm1           #  1     0    4      OPC=vmovd_xmm_r32       
  vmovupd %xmm2, %xmm4        #  2     0x4  4      OPC=vmovupd_xmm_xmm     
  vmovss %xmm1, %xmm4, %xmm1  #  3     0x8  4      OPC=vmovss_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
