  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  movzwl %bx, %r11d  #  1     0     4      OPC=movzwl_r32_r16   
  xorl %eax, %eax    #  2     0x4   2      OPC=xorl_r32_r32     
  movsbw %ah, %si    #  3     0x6   4      OPC=movsbw_r16_rh    
  xchgw %ax, %bx     #  4     0xa   2      OPC=xchgw_r16_ax     
  popcntw %si, %r9w  #  5     0xc   6      OPC=popcntw_r16_r16  
  rcll $0x1, %eax    #  6     0x12  2      OPC=rcll_r32_one     
  addw %ax, %bx      #  7     0x14  3      OPC=addw_r16_r16     
  rolw $0x1, %r11w   #  8     0x17  4      OPC=rolw_r16_one     
  xchgw %ax, %bx     #  9     0x1b  2      OPC=xchgw_r16_ax     
  retq               #  10    0x1d  1      OPC=retq             
                                                                
.size target, .-target
