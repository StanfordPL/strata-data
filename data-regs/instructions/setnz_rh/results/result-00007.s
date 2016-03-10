  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label     
  callq .set_szp_for_bl              #  2     0x5   5      OPC=callq_label     
  callq .read_pf_into_rcx            #  3     0xa   5      OPC=callq_label     
  callq .move_064_032_rcx_r12d_r13d  #  4     0xf   5      OPC=callq_label     
  movslq %r12d, %rcx                 #  5     0x14  3      OPC=movslq_r64_r32  
  movb %cl, %ah                      #  6     0x17  2      OPC=movb_rh_r8      
  retq                               #  7     0x19  1      OPC=retq            
                                                                               
.size target, .-target
