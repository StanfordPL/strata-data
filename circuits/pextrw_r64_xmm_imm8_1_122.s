  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  pmovsxwd %xmm1, %xmm2                     #  1     0     5      OPC=pmovsxwd_xmm_xmm  
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xf   5      OPC=callq_label       
  xorw %r8w, %bx                            #  4     0x14  4      OPC=xorw_r16_r16      
  retq                                      #  5     0x18  1      OPC=retq              
                                                                                        
.size target, .-target
