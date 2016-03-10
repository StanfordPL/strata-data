  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_cf_into_rbx            #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label  
  callq .set_szp_for_bx              #  3     0xa   5      OPC=callq_label  
  callq .move_008_016_r12b_r13b_cx   #  4     0xf   5      OPC=callq_label  
  salq %cl, %rbx                     #  5     0x14  3      OPC=salq_r64_cl  
  callq .read_zf_into_rbx            #  6     0x17  5      OPC=callq_label  
  retq                               #  7     0x1c  1      OPC=retq         
                                                                            
.size target, .-target
