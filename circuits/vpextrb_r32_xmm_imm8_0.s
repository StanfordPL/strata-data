  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  movq $0x40, %rbx                #  1     0     10     OPC=movq_r64_imm64    
  movupd %xmm1, %xmm6             #  2     0xa   4      OPC=movupd_xmm_xmm    
  pmovzxbq %xmm6, %xmm1           #  3     0xe   5      OPC=pmovzxbq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  4     0x13  5      OPC=callq_label       
  movb %r8b, %bl                  #  5     0x18  3      OPC=movb_r8_r8        
  retq                            #  6     0x1b  1      OPC=retq              
                                                                              
.size target, .-target
