  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  mulsd %xmm2, %xmm1          #  1     0     4      OPC=mulsd_xmm_xmm       
  vpxor %xmm1, %xmm1, %xmm11  #  2     0x4   4      OPC=vpxor_xmm_xmm_xmm   
  addsd %xmm11, %xmm1         #  3     0x8   5      OPC=addsd_xmm_xmm       
  punpcklqdq %xmm11, %xmm1    #  4     0xd   5      OPC=punpcklqdq_xmm_xmm  
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
