  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_zf_into_rbx          #  1     0     5      OPC=callq_label     
  movzwl %bx, %ecx                 #  2     0x5   3      OPC=movzwl_r32_r16  
  callq .move_064_032_rcx_r8d_r9d  #  3     0x8   5      OPC=callq_label     
  rolw $0x1, %r8w                  #  4     0xd   4      OPC=rolw_r16_one    
  setnbe %bl                       #  5     0x11  3      OPC=setnbe_r8       
  retq                             #  6     0x14  1      OPC=retq            
                                                                             
.size target, .-target
