  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  andnl %r9d, %r9d, %eax          #  2     0x5   5      OPC=andnl_r32_r32_r32   
  vzeroall                        #  3     0xa   3      OPC=vzeroall            
  cmoveq %r9, %r8                 #  4     0xd   4      OPC=cmoveq_r64_r64      
  vmaxsd %xmm0, %xmm15, %xmm1     #  5     0x11  4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  6     0x15  5      OPC=callq_label         
  retq                            #  7     0x1a  1      OPC=retq                
                                                                                
.size target, .-target
