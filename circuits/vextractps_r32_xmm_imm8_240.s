  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movq $0xffffffffffffff80, %rbx    #  1     0     10     OPC=movq_r64_imm64    
  shlb $0x1, %bh                    #  2     0xa   2      OPC=shlb_rh_one       
  callq .move_128_064_xmm1_r10_r11  #  3     0xc   5      OPC=callq_label       
  cmovnael %r10d, %ebx              #  4     0x11  4      OPC=cmovnael_r32_r32  
  retq                              #  5     0x15  1      OPC=retq              
                                                                                
.size target, .-target
