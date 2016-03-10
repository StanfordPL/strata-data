  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r12_r13   #  1     0     5      OPC=callq_label     
  movq $0x4, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  callq .move_032_064_r12d_r13d_rcx  #  3     0xf   5      OPC=callq_label     
  movb %ch, %bl                      #  4     0x14  2      OPC=movb_r8_rh      
  retq                               #  5     0x16  1      OPC=retq            
                                                                               
.size target, .-target
