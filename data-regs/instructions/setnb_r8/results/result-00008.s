  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x8, %r11                    #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx            #  2     0xa   5      OPC=callq_label     
  negb %r11b                         #  3     0xf   3      OPC=negb_r8         
  callq .move_064_032_rcx_r10d_r11d  #  4     0x12  5      OPC=callq_label     
  shlq %cl, %r11                     #  5     0x17  3      OPC=shlq_r64_cl     
  callq .read_sf_into_rbx            #  6     0x1a  5      OPC=callq_label     
  retq                               #  7     0x1f  1      OPC=retq            
                                                                               
.size target, .-target
