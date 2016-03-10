  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label      
  popcntl %ecx, %eax       #  2     0x5   4      OPC=popcntl_r32_r32  
  movsbl %cl, %r14d        #  3     0x9   4      OPC=movsbl_r32_r8    
  rolb $0x1, %r14b         #  4     0xd   3      OPC=rolb_r8_one      
  callq .read_of_into_rbx  #  5     0x10  5      OPC=callq_label      
  cmovnzl %ecx, %ecx       #  6     0x15  3      OPC=cmovnzl_r32_r32  
  setbe %bh                #  7     0x18  3      OPC=setbe_rh         
  salb $0x1, %ch           #  8     0x1b  2      OPC=salb_rh_one      
  adcl %ebx, %eax          #  9     0x1d  2      OPC=adcl_r32_r32     
  retq                     #  10    0x1f  1      OPC=retq             
                                                                      
.size target, .-target
