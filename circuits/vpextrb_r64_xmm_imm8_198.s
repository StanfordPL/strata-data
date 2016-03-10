  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %ymm1              #  1     0     5      OPC=vpmovzxbd_ymm_xmm  
  movq $0x2, %rbx                     #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_byte_24_of_ymm1_to_r8b  #  3     0xf   5      OPC=callq_label        
  incl %ebx                           #  4     0x14  2      OPC=incl_r32           
  xaddb %bl, %r8b                     #  5     0x16  4      OPC=xaddb_r8_r8        
  retq                                #  6     0x1a  1      OPC=retq               
                                                                                   
.size target, .-target
