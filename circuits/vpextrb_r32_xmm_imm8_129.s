  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  xorb %dil, %dil                           #  1     0     2      OPC=xorb_r8_r8      
  callq .read_of_into_rbx                   #  2     0x2   5      OPC=callq_label     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label     
  cmpxchgb %dh, %ah                         #  4     0xc   3      OPC=cmpxchgb_rh_rh  
  addb %al, %bl                             #  5     0xf   2      OPC=addb_r8_r8      
  retq                                      #  6     0x11  1      OPC=retq            
                                                                                      
.size target, .-target
