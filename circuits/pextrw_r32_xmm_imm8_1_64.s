  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  pmovzxwd %xmm1, %xmm15  #  1     0    6      OPC=pmovzxwd_xmm_xmm  
  vmovd %xmm15, %ebx      #  2     0x6  4      OPC=vmovd_r32_xmm     
  retq                    #  3     0xa  1      OPC=retq              
                                                                     
.size target, .-target
