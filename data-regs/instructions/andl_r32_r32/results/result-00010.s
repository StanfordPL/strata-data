  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  andnl %ecx, %ebx, %ebp   #  1     0    5      OPC=andnl_r32_r32_r32  
  xorl %ecx, %ebp          #  2     0x5  2      OPC=xorl_r32_r32       
  callq .read_cf_into_rbx  #  3     0x7  5      OPC=callq_label        
  cmovnzl %ebp, %ebx       #  4     0xc  3      OPC=cmovnzl_r32_r32    
  retq                     #  5     0xf  1      OPC=retq               
                                                                       
.size target, .-target
