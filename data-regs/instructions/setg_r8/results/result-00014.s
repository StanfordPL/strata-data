  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label    
  setnle %ah               #  2     0x5   3      OPC=setnle_rh      
  movzbw %ah, %si          #  3     0x8   4      OPC=movzbw_r16_rh  
  xaddw %bx, %si           #  4     0xc   4      OPC=xaddw_r16_r16  
  orl %ebx, %ebx           #  5     0x10  2      OPC=orl_r32_r32    
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
