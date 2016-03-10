  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  setnge %r9b              #  1     0     4      OPC=setnge_r8        
  movzbw %r9b, %ax         #  2     0x4   5      OPC=movzbw_r16_r8    
  rolb $0x1, %al           #  3     0x9   2      OPC=rolb_r8_one      
  popcntw %ax, %r11w       #  4     0xb   6      OPC=popcntw_r16_r16  
  callq .read_zf_into_rbx  #  5     0x11  5      OPC=callq_label      
  retq                     #  6     0x16  1      OPC=retq             
                                                                      
.size target, .-target
