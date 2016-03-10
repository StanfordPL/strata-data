  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq %xmm1, %rbx                  #  1     0     5      OPC=movq_r64_xmm    
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label     
  orb %bh, %bh                      #  3     0xa   2      OPC=orb_rh_rh       
  orl %ebx, %ebx                    #  4     0xc   2      OPC=orl_r32_r32     
  movq %r11, %rbx                   #  5     0xe   3      OPC=movq_r64_r64    
  cmovzq %rbx, %rbx                 #  6     0x11  4      OPC=cmovzq_r64_r64  
  retq                              #  7     0x15  1      OPC=retq            
                                                                              
.size target, .-target
