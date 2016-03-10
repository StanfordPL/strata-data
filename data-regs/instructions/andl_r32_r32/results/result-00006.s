  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  andnl %ecx, %ebx, %r9d   #  1     0     5      OPC=andnl_r32_r32_r32  
  xorl %ecx, %r9d          #  2     0x5   3      OPC=xorl_r32_r32       
  callq .read_sf_into_rbx  #  3     0x8   5      OPC=callq_label        
  cmovnel %r9d, %ebx       #  4     0xd   4      OPC=cmovnel_r32_r32    
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
