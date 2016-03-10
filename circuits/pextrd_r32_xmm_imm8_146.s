  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm2              #  1     0     4      OPC=vmovaps_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label      
  movq $0xffffffffffffff80, %rbx    #  3     0x9   10     OPC=movq_r64_imm64   
  orb %bh, %bh                      #  4     0x13  2      OPC=orb_rh_rh        
  xchgl %r13d, %ebx                 #  5     0x15  3      OPC=xchgl_r32_r32    
  retq                              #  6     0x18  1      OPC=retq             
                                                                               
.size target, .-target
