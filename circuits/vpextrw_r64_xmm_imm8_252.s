  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode              
.target:                               #        0     0      OPC=<label>         
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0x1, %rbx                      #  2     0x5   10     OPC=movq_r64_imm64  
  movq %xmm11, %rsp                    #  3     0xf   5      OPC=movq_r64_xmm    
  xaddw %bx, %sp                       #  4     0x14  5      OPC=xaddw_r16_r16   
  retq                                 #  5     0x19  1      OPC=retq            
                                                                                 
.size target, .-target
