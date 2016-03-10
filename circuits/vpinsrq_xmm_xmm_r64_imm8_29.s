  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label          
  shlq $0x1, %r9                  #  2     0x5   3      OPC=shlq_r64_one         
  xchgq %rbx, %r9                 #  3     0x8   3      OPC=xchgq_r64_r64        
  vzeroall                        #  4     0xb   3      OPC=vzeroall             
  vphsubd %xmm0, %xmm5, %xmm1     #  5     0xe   5      OPC=vphsubd_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  6     0x13  5      OPC=callq_label          
  retq                            #  7     0x18  1      OPC=retq                 
                                                                                 
.size target, .-target
