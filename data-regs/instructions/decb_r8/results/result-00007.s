  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xffffffffffffffe0, %rcx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_064_032_rcx_r12d_r13d  #  2     0xa   5      OPC=callq_label     
  callq .clear_cf                    #  3     0xf   5      OPC=callq_label     
  adcb %r13b, %bl                    #  4     0x14  3      OPC=adcb_r8_r8      
  retq                               #  5     0x17  1      OPC=retq            
                                                                               
.size target, .-target
