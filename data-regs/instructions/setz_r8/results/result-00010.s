  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movq $0x2, %rbx                    #  1     0     10     OPC=movq_r64_imm64   
  callq .move_016_008_bx_r10b_r11b   #  2     0xa   5      OPC=callq_label      
  callq .move_064_032_rbx_r12d_r13d  #  3     0xf   5      OPC=callq_label      
  callq .read_zf_into_rbx            #  4     0x14  5      OPC=callq_label      
  popcntw %r13w, %r15w               #  5     0x19  6      OPC=popcntw_r16_r16  
  adcb %r11b, %bl                    #  6     0x1f  3      OPC=adcb_r8_r8       
  retq                               #  7     0x22  1      OPC=retq             
                                                                                
.size target, .-target
