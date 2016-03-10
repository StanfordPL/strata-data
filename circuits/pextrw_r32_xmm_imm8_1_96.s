  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  xorb %bh, %bh                                 #  2     0x5   2      OPC=xorb_rh_rh       
  vmovq %xmm4, %r15                             #  3     0x7   5      OPC=vmovq_r64_xmm    
  movq $0x8, %rbx                               #  4     0xc   10     OPC=movq_r64_imm64   
  cmovncw %r15w, %bx                            #  5     0x16  5      OPC=cmovncw_r16_r16  
  retq                                          #  6     0x1b  1      OPC=retq             
                                                                                           
.size target, .-target
