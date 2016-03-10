  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vminss_xmm_xmm_xmm  
  vmovmskps %xmm5, %rbx       #  2     0x4  4      OPC=vmovmskps_r64_xmm   
  rorb $0x1, %bh              #  3     0x8  2      OPC=rorb_rh_one         
  retq                        #  4     0xa  1      OPC=retq                
                                                                           
.size target, .-target
