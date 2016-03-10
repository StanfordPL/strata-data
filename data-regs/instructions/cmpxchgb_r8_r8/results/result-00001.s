  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movzbl %bl, %r10d   #  1     0     4      OPC=movzbl_r32_r8   
  subb %r10b, %al     #  2     0x4   3      OPC=subb_r8_r8      
  setno %ch           #  3     0x7   3      OPC=setno_rh        
  cmovzw %cx, %bx     #  4     0xa   4      OPC=cmovzw_r16_r16  
  movswl %r10w, %eax  #  5     0xe   4      OPC=movswl_r32_r16  
  retq                #  6     0x12  1      OPC=retq            
                                                                
.size target, .-target
