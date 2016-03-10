  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  subb %dl, %ah                             #  2     0x5   2      OPC=subb_rh_r8        
  cmpxchgw %dx, %r9w                        #  3     0x7   5      OPC=cmpxchgw_r16_r16  
  movq $0x10, %rbx                          #  4     0xc   10     OPC=movq_r64_imm64    
  xchgw %ax, %bx                            #  5     0x16  2      OPC=xchgw_r16_ax      
  retq                                      #  6     0x18  1      OPC=retq              
                                                                                        
.size target, .-target
