  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movswq %bx, %r11    #  1     0     4      OPC=movswq_r64_r16   
  movsbl %al, %esp    #  2     0x4   3      OPC=movsbl_r32_r8    
  salw $0x1, %sp      #  3     0x7   3      OPC=salw_r16_one     
  cmovaew %cx, %sp    #  4     0xa   4      OPC=cmovaew_r16_r16  
  movzwq %r11w, %r13  #  5     0xe   4      OPC=movzwq_r64_r16   
  subw %r13w, %ax     #  6     0x12  4      OPC=subw_r16_r16     
  movslq %r11d, %rax  #  7     0x16  3      OPC=movslq_r64_r32   
  cmovew %sp, %bx     #  8     0x19  4      OPC=cmovew_r16_r16   
  retq                #  9     0x1d  1      OPC=retq             
                                                                 
.size target, .-target
