  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmulsd %xmm1, %xmm1, %xmm1        #  1     0     4      OPC=vmulsd_xmm_xmm_xmm  
  movapd %xmm1, %xmm2               #  2     0x4   4      OPC=movapd_xmm_xmm      
  movq $0x8, %rbx                   #  3     0x8   10     OPC=movq_r64_imm64      
  callq .move_128_064_xmm2_r12_r13  #  4     0x12  5      OPC=callq_label         
  xaddw %bx, %r13w                  #  5     0x17  5      OPC=xaddw_r16_r16       
  retq                              #  6     0x1c  1      OPC=retq                
                                                                                  
.size target, .-target
