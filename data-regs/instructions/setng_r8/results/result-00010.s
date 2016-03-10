  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm3, %xmm3, %xmm4  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  movq %xmm4, %rbx            #  2     0x4  5      OPC=movq_r64_xmm        
  setle %bh                   #  3     0x9  3      OPC=setle_rh            
  xchgb %bh, %bl              #  4     0xc  2      OPC=xchgb_r8_rh         
  retq                        #  5     0xe  1      OPC=retq                
                                                                           
.size target, .-target
