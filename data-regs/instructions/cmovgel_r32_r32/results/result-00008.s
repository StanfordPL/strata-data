  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode                
.target:             #        0     0      OPC=<label>           
  xchgl %ecx, %ebx   #  1     0     2      OPC=xchgl_r32_r32     
  stc                #  2     0x2   1      OPC=stc               
  movq $0x4, %r11    #  3     0x3   10     OPC=movq_r64_imm64    
  xchgw %cx, %cx     #  4     0xd   3      OPC=xchgw_r16_r16     
  cmovll %ecx, %ebx  #  5     0x10  3      OPC=cmovll_r32_r32    
  incb %r11b         #  6     0x13  3      OPC=incb_r8           
  cmovnbew %bx, %bx  #  7     0x16  4      OPC=cmovnbew_r16_r16  
  retq               #  8     0x1a  1      OPC=retq              
                                                                 
.size target, .-target
