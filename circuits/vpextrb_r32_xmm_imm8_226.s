  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxbd %xmm1, %xmm3             #  1     0     5      OPC=pmovzxbd_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label       
  movq $0x2, %rbx                   #  3     0xa   10     OPC=movq_r64_imm64    
  xaddb %bl, %r11b                  #  4     0x14  4      OPC=xaddb_r8_r8       
  retq                              #  5     0x18  1      OPC=retq              
                                                                                
.size target, .-target
