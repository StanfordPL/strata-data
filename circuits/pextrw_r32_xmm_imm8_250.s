  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0x5, %rbx                    #  1     0     10     OPC=movq_r64_imm64  
  movq %xmm1, %rdx                   #  2     0xa   5      OPC=movq_r64_xmm    
  callq .move_064_032_rdx_r10d_r11d  #  3     0xf   5      OPC=callq_label     
  xaddw %bx, %r11w                   #  4     0x14  5      OPC=xaddw_r16_r16   
  retq                               #  5     0x19  1      OPC=retq            
                                                                               
.size target, .-target
