  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  vzeroall                          #  1     0     3      OPC=vzeroall        
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label     
  movswl %r13w, %ebp                #  3     0x8   4      OPC=movswl_r32_r16  
  xaddl %ebp, %ebx                  #  4     0xc   3      OPC=xaddl_r32_r32   
  vmovq %rbp, %xmm1                 #  5     0xf   5      OPC=vmovq_xmm_r64   
  retq                              #  6     0x14  1      OPC=retq            
                                                                              
.size target, .-target
