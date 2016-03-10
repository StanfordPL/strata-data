  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movsbl %ah, %esi  #  1     0     3      OPC=movsbl_r32_rh    
  popcntw %si, %ax  #  2     0x3   5      OPC=popcntw_r16_r16  
  movq %rsi, %r8    #  3     0x8   3      OPC=movq_r64_r64     
  xchgw %ax, %r8w   #  4     0xb   3      OPC=xchgw_r16_ax     
  shlb $0x1, %al    #  5     0xe   2      OPC=shlb_r8_one      
  xchgb %ah, %al    #  6     0x10  2      OPC=xchgb_r8_rh      
  retq              #  7     0x12  1      OPC=retq             
                                                               
.size target, .-target
