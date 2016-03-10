  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label     
  callq .move_064_032_rbx_r10d_r11d  #  2     0x5   5      OPC=callq_label     
  callq .move_032_064_r10d_r11d_rcx  #  3     0xa   5      OPC=callq_label     
  movq $0x20, %rbx                   #  4     0xf   10     OPC=movq_r64_imm64  
  xaddb %bl, %cl                     #  5     0x19  3      OPC=xaddb_r8_r8     
  setnp %ah                          #  6     0x1c  3      OPC=setnp_rh        
  retq                               #  7     0x1f  1      OPC=retq            
                                                                               
.size target, .-target
