  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vfnmadd231ss %xmm1, %xmm1, %xmm1              #  1     0     5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  movq $0x20, %rbx                              #  2     0x5   10     OPC=movq_r64_imm64            
  maxsd %xmm1, %xmm1                            #  3     0xf   4      OPC=maxsd_xmm_xmm             
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0x13  5      OPC=callq_label               
  xchgw %bx, %r12w                              #  5     0x18  4      OPC=xchgw_r16_r16             
  retq                                          #  6     0x1c  1      OPC=retq                      
                                                                                                    
.size target, .-target
