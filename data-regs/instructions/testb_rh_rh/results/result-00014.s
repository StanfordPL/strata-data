  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vxorps %xmm1, %xmm1, %xmm0  #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  vmovq %xmm0, %xmm1          #  2     0x4   4      OPC=vmovq_xmm_xmm       
  movd %xmm1, %ecx            #  3     0x8   4      OPC=movd_r32_xmm        
  orb %ah, %cl                #  4     0xc   2      OPC=orb_r8_rh           
  testb %bh, %cl              #  5     0xe   2      OPC=testb_r8_rh         
  retq                        #  6     0x10  1      OPC=retq                
                                                                            
.size target, .-target
