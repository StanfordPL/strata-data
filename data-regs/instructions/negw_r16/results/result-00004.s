  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movswl %bx, %r9d       #  1     0     4      OPC=movswl_r32_r16  
  notw %r9w              #  2     0x4   4      OPC=notw_r16        
  incw %r9w              #  3     0x8   4      OPC=incw_r16        
  xaddw %bx, %r9w        #  4     0xc   5      OPC=xaddw_r16_r16   
  callq .set_szp_for_bx  #  5     0x11  5      OPC=callq_label     
  retq                   #  6     0x16  1      OPC=retq            
                                                                   
.size target, .-target
