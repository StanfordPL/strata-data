  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movq $0x8, %rbx                 #  1     0     10     OPC=movq_r64_imm64         
  vunpckhps %xmm1, %xmm1, %xmm1   #  2     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  orb %bl, %bh                    #  3     0xe   2      OPC=orb_rh_r8              
  callq .move_128_064_xmm1_r8_r9  #  4     0x10  5      OPC=callq_label            
  cmovncw %r9w, %bx               #  5     0x15  5      OPC=cmovncw_r16_r16        
  retq                            #  6     0x1a  1      OPC=retq                   
                                                                                   
.size target, .-target
