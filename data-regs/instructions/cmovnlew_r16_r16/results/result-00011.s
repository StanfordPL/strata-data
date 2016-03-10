  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  setg %r11b           #  1     0     4      OPC=setg_r8          
  movzbl %r11b, %r11d  #  2     0x4   4      OPC=movzbl_r32_r8    
  movslq %r11d, %rdx   #  3     0x8   3      OPC=movslq_r64_r32   
  xorw %dx, %bx        #  4     0xb   3      OPC=xorw_r16_r16     
  cmovaw %cx, %cx      #  5     0xe   4      OPC=cmovaw_r16_r16   
  salq $0x1, %rdx      #  6     0x12  3      OPC=salq_r64_one     
  cmovnzw %cx, %bx     #  7     0x15  4      OPC=cmovnzw_r16_r16  
  retq                 #  8     0x19  1      OPC=retq             
                                                                  
.size target, .-target
