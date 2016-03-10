  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label      
  cmpl %r12d, %ebx                   #  2     0x5   3      OPC=cmpl_r32_r32     
  bswap %r13d                        #  3     0x8   3      OPC=bswap_r32        
  bswap %ebx                         #  4     0xb   2      OPC=bswap_r32        
  movslq %r13d, %r12                 #  5     0xd   3      OPC=movslq_r64_r32   
  cmovpel %ebx, %r13d                #  6     0x10  4      OPC=cmovpel_r32_r32  
  callq .move_032_064_r12d_r13d_rbx  #  7     0x14  5      OPC=callq_label      
  retq                               #  8     0x19  1      OPC=retq             
                                                                                
.size target, .-target
