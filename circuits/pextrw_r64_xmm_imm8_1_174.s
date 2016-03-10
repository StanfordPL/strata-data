  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  movq $0x3, %rbx                                 #  1     0     10     OPC=movq_r64_imm64  
  orpd %xmm1, %xmm1                               #  2     0xa   4      OPC=orpd_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xe   5      OPC=callq_label     
  vmovq %xmm11, %rax                              #  4     0x13  5      OPC=vmovq_r64_xmm   
  xchgw %ax, %bx                                  #  5     0x18  2      OPC=xchgw_r16_ax    
  retq                                            #  6     0x1a  1      OPC=retq            
                                                                                            
.size target, .-target
