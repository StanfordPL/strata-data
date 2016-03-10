  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movq $0x5, %rcx                  #  1     0     10     OPC=movq_r64_imm64  
  xaddb %ah, %ch                   #  2     0xa   3      OPC=xaddb_rh_rh     
  shlb $0x1, %ah                   #  3     0xd   2      OPC=shlb_rh_one     
  adcb %bh, %ah                    #  4     0xf   2      OPC=adcb_rh_rh      
  callq .move_064_032_rcx_r8d_r9d  #  5     0x11  5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx  #  6     0x16  5      OPC=callq_label     
  retq                             #  7     0x1b  1      OPC=retq            
                                                                             
.size target, .-target
