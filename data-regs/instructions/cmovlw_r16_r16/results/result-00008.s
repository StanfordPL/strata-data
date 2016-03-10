  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode                
.target:              #        0     0      OPC=<label>           
  movzwl %cx, %r8d    #  1     0     4      OPC=movzwl_r32_r16    
  xchgb %cl, %r8b     #  2     0x4   3      OPC=xchgb_r8_r8       
  cmovgew %cx, %r8w   #  3     0x7   5      OPC=cmovgew_r16_r16   
  cmovngew %r8w, %bx  #  4     0xc   5      OPC=cmovngew_r16_r16  
  retq                #  5     0x11  1      OPC=retq              
                                                                  
.size target, .-target
