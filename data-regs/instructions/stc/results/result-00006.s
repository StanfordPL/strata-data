  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorl %ebx, %ebx                    #  1     0     2      OPC=xorl_r32_r32    
  callq .move_032_016_ebx_r12w_r13w  #  2     0x2   5      OPC=callq_label     
  decw %r13w                         #  3     0x7   4      OPC=decw_r16        
  movzwl %r13w, %r12d                #  4     0xb   4      OPC=movzwl_r32_r16  
  callq .move_016_032_r12w_r13w_edx  #  5     0xf   5      OPC=callq_label     
  decb %r13b                         #  6     0x14  3      OPC=decb_r8         
  xaddb %r13b, %dl                   #  7     0x17  4      OPC=xaddb_r8_r8     
  retq                               #  8     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
