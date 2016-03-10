  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vpmovsxwd %xmm1, %xmm12              #  1     0     5      OPC=vpmovsxwd_xmm_xmm         
  vfnmsub213ss %xmm12, %xmm12, %xmm12  #  2     0x5   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movd %xmm12, %r15d                   #  3     0xa   5      OPC=movd_r32_xmm              
  movq $0x20, %rbx                     #  4     0xf   10     OPC=movq_r64_imm64            
  orw %r15w, %bx                       #  5     0x19  4      OPC=orw_r16_r16               
  movq $0x20, %r8                      #  6     0x1d  10     OPC=movq_r64_imm64            
  callq .move_byte_7_of_ymm1_to_r8b    #  7     0x27  5      OPC=callq_label               
  xaddq %rbx, %r8                      #  8     0x2c  4      OPC=xaddq_r64_r64             
  retq                                 #  9     0x30  1      OPC=retq                      
                                                                                           
.size target, .-target
