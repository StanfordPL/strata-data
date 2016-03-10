  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  movq $0x80, %rbx            #  2     0x4   10     OPC=movq_r64_imm64      
  vmovq %xmm1, %r10           #  3     0xe   5      OPC=vmovq_r64_xmm       
  orb %bh, %bh                #  4     0x13  2      OPC=orb_rh_rh           
  cmovnbw %r10w, %bx          #  5     0x15  5      OPC=cmovnbw_r16_r16     
  retq                        #  6     0x1a  1      OPC=retq                
                                                                            
.size target, .-target
