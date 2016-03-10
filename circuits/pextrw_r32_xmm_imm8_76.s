  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1           #  1     0     4      OPC=punpckhqdq_xmm_xmm  
  vmovupd %xmm1, %xmm3              #  2     0x4   4      OPC=vmovupd_xmm_xmm     
  callq .move_128_064_xmm3_r10_r11  #  3     0x8   5      OPC=callq_label         
  movzwq %r11w, %rbx                #  4     0xd   4      OPC=movzwq_r64_r16      
  retq                              #  5     0x11  1      OPC=retq                
                                                                                  
.size target, .-target
