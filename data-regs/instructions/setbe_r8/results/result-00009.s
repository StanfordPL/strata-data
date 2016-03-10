  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x3, %r14          #  1     0     10     OPC=movq_r64_imm64   
  movzbq %r14b, %rdi       #  2     0xa   4      OPC=movzbq_r64_r8    
  setnbe %dil              #  3     0xe   4      OPC=setnbe_r8        
  popcntw %di, %r15w       #  4     0x12  6      OPC=popcntw_r16_r16  
  callq .read_zf_into_rbx  #  5     0x18  5      OPC=callq_label      
  retq                     #  6     0x1d  1      OPC=retq             
                                                                      
.size target, .-target
