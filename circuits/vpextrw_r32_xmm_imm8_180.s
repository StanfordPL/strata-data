  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vhaddpd %xmm1, %xmm11, %xmm3         #  2     0x5   4      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13     #  3     0x9   5      OPC=callq_label          
  movq $0x0, %rbx                      #  4     0xe   10     OPC=movq_r64_imm64       
  subb %bh, %bl                        #  5     0x18  2      OPC=subb_r8_rh           
  adcw %r12w, %bx                      #  6     0x1a  4      OPC=adcw_r16_r16         
  retq                                 #  7     0x1e  1      OPC=retq                 
                                                                                      
.size target, .-target
