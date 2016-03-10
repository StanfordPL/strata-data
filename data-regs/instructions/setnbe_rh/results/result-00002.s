  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label     
  movslq %ecx, %r9         #  2     0x5   3      OPC=movslq_r64_r32  
  callq .read_cf_into_rbx  #  3     0x8   5      OPC=callq_label     
  xaddl %r9d, %ebx         #  4     0xd   4      OPC=xaddl_r32_r32   
  setbe %ah                #  5     0x11  3      OPC=setbe_rh        
  retq                     #  6     0x14  1      OPC=retq            
                                                                     
.size target, .-target
