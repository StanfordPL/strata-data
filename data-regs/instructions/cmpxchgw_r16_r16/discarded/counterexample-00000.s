  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movw %cx, %r14w    #  1     0     4      OPC=movw_r16_r16     
  subw %bx, %ax      #  2     0x4   3      OPC=subw_r16_r16     
  cmovew %r14w, %bx  #  3     0x7   5      OPC=cmovew_r16_r16   
  cmovnzw %bx, %ax   #  4     0xc   4      OPC=cmovnzw_r16_r16  
  retq               #  5     0x10  1      OPC=retq             
                                                                
.size target, .-target
