  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movq $0x7, %rbx                     #  1     0     10     OPC=movq_r64_imm64    
  pmovzxdq %xmm1, %xmm1               #  2     0xa   5      OPC=pmovzxdq_xmm_xmm  
  callq .move_byte_11_of_ymm1_to_r8b  #  3     0xf   5      OPC=callq_label       
  xaddb %bl, %r8b                     #  4     0x14  4      OPC=xaddb_r8_r8       
  retq                                #  5     0x18  1      OPC=retq              
                                                                                  
.size target, .-target
