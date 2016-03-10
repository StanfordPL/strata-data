  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm11  #  1     0    5      OPC=movshdup_xmm_xmm  
  vmovd %xmm11, %ebx      #  2     0x5  4      OPC=vmovd_r32_xmm     
  retq                    #  3     0x9  1      OPC=retq              
                                                                     
.size target, .-target
