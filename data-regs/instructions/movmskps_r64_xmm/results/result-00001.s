  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  movdqu %xmm1, %xmm13    #  1     0    5      OPC=movdqu_xmm_xmm     
  vmovmskps %xmm13, %rbx  #  2     0x5  5      OPC=vmovmskps_r64_xmm  
  retq                    #  3     0xa  1      OPC=retq               
                                                                      
.size target, .-target
